require 'prawn'
require 'prawn/security'
require "prawn/layout"
require "open-uri"
lorem = <<-EOS
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ornare enim placerat mi imperdiet dignissim. Phasellus id velit viverra turpis aliquam posuere at vel est. Nunc et lorem ut dolor condimentum elementum eu at neque. Proin molestie sodales augue, sed suscipit mi pellentesque tempus. Quisque consequat mi eu massa rhoncus a imperdiet massa pharetra. Sed faucibus nisi ac dolor interdum lacinia. Donec adipiscing elit euismod felis tempor iaculis. Pellentesque eget lectus a sem adipiscing euismod. Proin ornare dignissim tortor, sit amet imperdiet eros feugiat nec. Vestibulum ultrices purus ac lectus facilisis rutrum. Nulla ac augue ipsum, ut scelerisque mauris.

Nullam dapibus condimentum lacus, vel scelerisque ipsum ullamcorper a. Cras sed nulla erat, at sagittis sapien. Aenean varius sagittis velit, vitae dignissim turpis pulvinar ac. Phasellus commodo nibh ac risus tincidunt eu condimentum ligula euismod. Fusce a sem et purus mollis scelerisque non non lorem. Suspendisse lacinia orci a turpis volutpat fermentum. Duis porta ipsum sed est feugiat pharetra commodo lectus luctus. Ut quis nibh ligula. Phasellus id sapien et justo sagittis accumsan sit amet non magna. Integer id ornare ipsum. Morbi sodales orci ac neque lobortis tincidunt ut eget odio. Aenean quis cursus magna.

Praesent id sapien mauris. Nulla id ligula nec est gravida tempus nec vel mauris. In lorem ante, scelerisque nec euismod nec, ullamcorper sed dolor. Nulla accumsan erat sed urna tempor non vestibulum lectus dictum. Vestibulum adipiscing eros non magna ultrices dapibus at sit amet nunc. Nullam ipsum quam, volutpat id accumsan sit amet, consectetur id erat. Donec sagittis malesuada sodales. Vivamus lacinia convallis odio, nec laoreet urna egestas hendrerit. Etiam eu suscipit lectus. Fusce vel erat sit amet nibh adipiscing aliquet at ut ligula. Curabitur iaculis convallis facilisis. Proin fringilla tellus vel neque tempus pretium. Sed nisl ipsum, tempor ut viverra a, facilisis non orci. Sed dapibus luctus velit vel tincidunt. Phasellus convallis accumsan turpis, quis posuere risus eleifend sed. Curabitur at ante et massa varius iaculis. Duis porta justo ac ipsum rhoncus pellentesque. Aenean consectetur tincidunt arcu adipiscing vehicula.

Maecenas iaculis tortor eu velit faucibus ac aliquet ante tincidunt. Aenean vestibulum lacus quis augue pretium et dapibus elit auctor. Mauris commodo, dui nec rhoncus gravida, sem odio bibendum magna, at fermentum purus lectus et neque. Integer eu dolor felis, sed egestas neque. Duis convallis pharetra euismod. Suspendisse in tortor ac arcu consectetur molestie. Suspendisse volutpat ultrices malesuada. Sed nec ligula nulla, et hendrerit massa. In scelerisque, purus nec ornare euismod, massa odio consequat sem, id porttitor est mi eget mauris. Nam bibendum magna et mi tempor faucibus.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla hendrerit facilisis lorem et ultrices. Ut quis erat sapien. Sed varius libero sit amet ligula dapibus sit amet dapibus urna condimentum. Sed arcu magna, posuere a accumsan in, malesuada ut dui. Quisque molestie enim malesuada lectus bibendum sagittis. Morbi rutrum ultrices gravida. Vivamus in nisl odio. Vestibulum tempus euismod dapibus. In purus justo, placerat eget molestie eu, vehicula eu metus. Aenean egestas hendrerit nibh, a lacinia nunc tincidunt vitae. Etiam sit amet dolor massa. Nunc aliquam est eu purus luctus vel suscipit magna auctor. Sed venenatis iaculis ultrices. Phasellus sed magna nisi, faucibus pellentesque diam. Donec ac enim sed enim malesuada ornare in non nunc. In egestas purus vitae elit placerat a dignissim elit varius. Aliquam erat volutpat.
EOS
callout = "testing testing"
Prawn::Document.generate("pdftest.pdf") do
  box_height = font.height * 5

  ingram = "ingram.png"
  image ingram, :at => [200, bounds.top - 55], :width => 310 
  font "times.ttf"
  draw_text "Ingram brings home heisman!", :at => [60,bounds.top - 20], :size => 32

  excess_text = text_box lorem, {
    :width    => 150,
    :height   => 650,
    :align    => :justify,
    :overflow => :truncate,
    :at       => [40, bounds.top - 50],
  }

  excess_text = text_box lorem, {
    :width    => 150,
    :height   => 450,
    :align    => :justify,
    :overflow => :truncate,
    :at       => [200 , 441.5],
  }

  excess_text = text_box lorem, {
    :width    => 150,
    :height   => 450,
    :align    => :justify,
    :overflow => :truncate,
    :at       => [360 , 441.5],
  }
end
