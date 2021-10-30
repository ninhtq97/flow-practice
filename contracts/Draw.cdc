pub struct Canvas {
  pub let width: UInt8
  pub let height: UInt8
  pub let pixel: String

  init(width: UInt8, height: UInt8, pixel: String){
    self.width = width
    self.height = height
    self.pixel = pixel
  }
}

pub resource Picture {
  pub let canvas: Canvas

  init(canvas: Canvas){
    self.canvas = canvas
  }
}

pub fun serializeStringArray(_ lines: [String]): String {
  var buffer = ""

  for line in lines{
    buffer = buffer.concat(line)
  }

  return buffer
}

pub fun main() {
  let pixelsX = [
    "*   *",
    " * * ",
    "  *  ",
    " * * ",
    "*   *"
  ]

  let canvasX = Canvas(
    width: 5,
    height: 5,
    pixel: serializeStringArray(pixelsX)
  )

  let letterX <- create Picture(canvas: canvasX)

  log(letterX.canvas)

  destroy letterX
}