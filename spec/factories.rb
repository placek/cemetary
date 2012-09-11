FactoryGirl.define do
  sequence :decedent do |n|
    "Mr Decedent #{n}"
  end

  sequence :date do
    Date.new
  end

  sequence :text do
    <<TEXT_END
Quisque vehicula sagittis aliquet. Vestibulum congue, erat eu viverra aliquet, erat nisl accumsan massa, ac feugiat urna elit eget tellus. Sed porttitor pharetra turpis eu tincidunt. Mauris ultricies tempus massa, ut tristique diam sollicitudin et. Aenean aliquam orci mauris, sit amet rhoncus velit. Duis gravida pharetra dolor volutpat rhoncus. Quisque id felis ut diam vehicula aliquam id quis libero. Ut eget rutrum nisi. In eu tempus ante. Fusce blandit ultrices imperdiet. Vivamus volutpat, mauris a consectetur pharetra, nunc erat posuere ante, et sodales nisl nunc non dui. Praesent ut neque sit amet ligula semper aliquam laoreet vel libero. Donec at arcu ligula, non adipiscing erat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Nunc molestie sem sit amet dolor commodo nec rutrum turpis scelerisque. Cras sagittis faucibus ante, vel ultrices leo fringilla ut. Cras egestas dictum diam, et varius lacus aliquet porta. Donec non elit a ligula ornare congue sit amet sit amet enim. Curabitur quis orci massa, ut porttitor nibh. In rutrum eros ac magna eleifend sit amet ornare nisi rutrum. Curabitur eget augue et urna laoreet malesuada. Sed magna velit, tristique nec aliquam id, ultricies sed eros. Pellentesque vitae felis at leo ultricies feugiat vel at orci. Aliquam sed nibh nisi. Ut molestie, arcu a ultricies dictum, turpis leo ullamcorper ipsum, sed aliquet eros turpis sed dolor. Aenean a lorem velit, vitae commodo tellus. Ut est justo, vestibulum in rhoncus ac, fringilla pretium nunc. Phasellus in neque eget neque eleifend elementum. Proin cursus quam vel mauris ultrices scelerisque.

Suspendisse eu arcu quis justo pulvinar congue. Vestibulum est velit, commodo eget rhoncus at, eleifend quis felis. Curabitur non tortor elementum orci scelerisque venenatis. Aenean aliquam nisi ac neque viverra varius. Pellentesque tincidunt, sapien ac suscipit volutpat, odio risus commodo odio, sit amet tristique velit ante non nunc. Nam gravida posuere nisi, vel fringilla diam adipiscing ut. Praesent vel iaculis sem. Maecenas libero libero, eleifend et congue vel, cursus ac sem. Ut tristique, nisi nec ornare aliquam, diam lacus tristique odio, in luctus tortor sem vel augue. Pellentesque dictum, urna a auctor sagittis, enim felis cursus tellus, ac vulputate nunc diam vel nisl. In hac habitasse platea dictumst.

In et nisl massa, in pellentesque urna. Mauris dolor ipsum, fringilla eget feugiat a, euismod in urna. Cras quis velit diam. Etiam a fermentum risus. Duis vel lectus purus. Maecenas ut est at dui sodales pretium eu vel nisi. Praesent a orci sit amet magna fringilla tincidunt. Fusce sem libero, iaculis sed ullamcorper at, commodo vel erat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed blandit libero eget justo imperdiet ut semper eros hendrerit. Fusce posuere, sem id lacinia porta, massa velit vehicula neque, sit amet accumsan nisl massa sit amet neque. Sed cursus luctus pellentesque. Proin tempor nunc nec nulla malesuada at fermentum leo facilisis.

Praesent tellus elit, fringilla sit amet rutrum a, sagittis a metus. Nam sed mauris et dolor tincidunt tempus eget vel orci. Nulla eget imperdiet dui. Curabitur eu urna diam, non fermentum eros. Sed imperdiet, nunc quis laoreet condimentum, magna nisi pharetra nisl, et hendrerit est tortor ut metus. Nulla sollicitudin velit a quam congue vestibulum. Nulla luctus pulvinar lorem, sed semper enim scelerisque ut. Donec nisl nisi, iaculis at tincidunt ut, posuere vitae turpis. In sed ipsum id purus malesuada pulvinar quis eu eros. Nam ac magna quam.
TEXT_END
  end
end
