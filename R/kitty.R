#' Show a Cute Colored ASCII Cat
#'
#' Prints an ASCII cat with different parts colored.
#'
#' @param ear_color Color for the ears.
#' @param eye_color Color for the eyes.
#' @param whisker_color Color for the whiskers.
#' @param mouth_color Color for the mouth.
#' @param body_color Color for the body.
#' @param leg_color Color for the legs.
#' @param tail_color Color for the tail.
#' @export
kitty <- function(
    ear_color     = "yellow",
    eye_color     = "blue",
    whisker_color = "magenta",
    mouth_color   = "red",
    body_color    = "grey",
    leg_color     = "green",
    tail_color    = "cyan"
) {
  if (!requireNamespace("crayon", quietly = TRUE)) {
    stop("Please install the 'crayon' package.")
  }

  # Create style functions from user colors
  ear     <- crayon::make_style(ear_color)
  eye     <- crayon::make_style(eye_color)
  whisker <- crayon::make_style(whisker_color)
  mouth   <- crayon::make_style(mouth_color)
  body    <- crayon::make_style(body_color)
  leg     <- crayon::make_style(leg_color)
  tail    <- crayon::make_style(tail_color)

  cat(
    # Ears
    ear("          /\\__/\\\n"),
    ear("        /`    '\\\n"),

    # Eyes and whiskers
    whisker("     === "),
    eye("0  0"),
    whisker(" === \n"),

    # Mouth
    mouth("        \\  --  /\n"),

    # Body
    body("       /        \\\n"),
    body("      /          \\\n"),
    body("     |            |\n"),

    # Legs
    leg("      \\  ||  ||  /\n"),

    # Tail and paws
    tail("       \\_oo__oo_/#######o\n")
  )
}

