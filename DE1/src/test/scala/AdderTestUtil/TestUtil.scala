package AdderTestUtil

object AdderTestUtil {
  implicit class ExtendedRandom(ran: scala.util.Random) {
    def nextByte = (ran.nextInt(256)).toByte
    def nextByteArray(size: Int) = {
      val arr = new Array[Byte](size)
      ran.nextBytes(arr)
      arr
    }
  }
  def fixLength(src: String, bitLength : Int) : String = {
    if(src.length < bitLength){
      fixLength("0" + src, bitLength)
    }else{
      src.reverse.substring(0,bitLength).reverse
    }
  }
  implicit class StringUtil(str:String) extends scala.AnyRef{
    def S2B : BigInt = {
      BigInt(str,2)
    }
  }
  implicit class BigIntUtil(num : BigInt) extends scala.AnyRef {
    private val binaryString : String = num.toString(2);
    private val length : Int = num.bitLength

    def clear : BigInt = 0
    def B2S: String = binaryString
    def B2B(len:Int) : BigInt = {
      BigInt(fixLength(binaryString,len),2)
    }
    def B2S(len:Int) : String = {
      fixLength(binaryString,len)
    }
    private def rec_setBit(num:BigInt, high:Int, low: Int) : BigInt ={
      if(low > high){
        num
      }else{
        rec_setBit(num.setBit(low), high, low+1)
      }
    }
    def apply(high:Int, low: Int) : BigInt ={
      val res = (num.B2S(high + 1).reverse.substring(low,high+1).reverse).S2B
      res
    }
    def setBit(high:Int, low:Int) : BigInt ={
      rec_setBit(num, high, low)
    }
    def allSet : BigInt = {
      rec_setBit(num,length - 1, 0)
    }
    def decompose(decomposer: Int, dBitLength: Int) : IndexedSeq[BigInt]={
      for(slot_idx <- 0 until decomposer) yield {
        val low = dBitLength * slot_idx
        val high = dBitLength * (slot_idx + 1) - 1
        num(high,low)
      }
    }
    def decompose(decomposer: Int) : IndexedSeq[BigInt] ={
      val dBitLength : Int = {
        val mo = length % decomposer
        if (mo == 0){
          length / decomposer
        }else{
          length / decomposer + 1
        }
      }
      decompose(decomposer,dBitLength)
    }
    def ||| (str: String, bitLength: Int) : BigInt = {
      if(str.length < bitLength){
        num ||| (str + str, bitLength)
      }else{
        (num.B2S + str.reverse.substring(0,bitLength).reverse).S2B
      }

    }
    def ||| (str : String) : BigInt = {
      (num.B2S + str).S2B
    }
    def ||| (lower_value : BigInt, bitLength: Int) : BigInt = {
      if (bitLength > 0) {
        (num.B2S + lower_value.B2S(bitLength)).S2B
      } else if (bitLength == 0) {
        num
      } else {
        assert(false,"append a negative length value??")
        num
      }
    }
    def |*| (rnd_max : Int, duplicate_time : Int, bitLength: Int, isRandom : Boolean):BigInt = {
      if(duplicate_time < 1){
        num
      }else{
        if(isRandom) {
          val rnt_int = scala.util.Random.nextInt(rnd_max)
          (num ||| (rnt_int, bitLength)) |*| (rnd_max, duplicate_time - 1, bitLength,isRandom)
        } else {
          (num ||| (rnd_max, bitLength)) |*| (rnd_max, duplicate_time - 1, bitLength,isRandom)
        }
      }
    }
  }
}