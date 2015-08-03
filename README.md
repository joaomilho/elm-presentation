## Let's talk about state

This is a presentation about [Elm](http://elm-lang.org) for the [React Israel meetup group](http://www.meetup.com/ReactJS-IL).

The goal of this presentation is to discuss the value of `setState` in [React](http://facebook.github.io/react). This topic was prompted by a [Facebook discussion](https://www.facebook.com/groups/reactjsil/permalink/1592365447697253/) on the group pointing to this [Reddit comment](https://www.reddit.com/r/reactjs/comments/3bjdoe/state_is_an_antipattern/).

I will attempt to give some light to this debate by showing how Elm handles component composition, specially how not only the views – the `render` in React – but also the models – the internal component states in React – must me composed.

Along the way, I plan to explain how data lives always in the main component, although the actuall update is delegated to subcomponents; how the data flow respects the "unidirectional data flow", going from the main component to sub component's views; and how it avoids completely local states.

Finally, I'll try to show how you can get things you've learn from Elm and apply in [Flux](https://facebook.github.io/flux) + React implementations and have an open discussion on cases where `setState` would be ok-ish. The Flux implementation that most likely resembles Elm's architecture is IMO [Redux](https://github.com/gaearon/redux).

An additional goal is to convince Javascript developers that learning some [Haskell](https://www.haskell.org) (well, Elm, which is very similar) gives you a pure, infinite and immutable source of insights.

### Content

###### Slides

The source slides can be downloaded [here](https://github.com/joaomilho/elm-presentation/blob/master/react-meetup-state-elm.key?raw=true), but you'll need [Apple's Keynote](https://www.apple.com/mac/keynote/). A [PDF is also available](https://github.com/joaomilho/elm-presentation/blob/master/react-meetup-state-elm.pdf), but it looks bad.

###### Code

The code is, well... in this repo. The best way to visualise it is using the awesome [Git Wayback Machine](https://github.com/MadRabbit/git-wayback-machine), so you can see the thing unfolding step by step (commit by commit, actually).

Also you I'll show a little bit of these two projects:

  - [github.com/joaomilho/game-of-life-elm](https://github.com/joaomilho/game-of-life-elm)


  - [github.com/joaomilho/kevernote-elm](https://github.com/joaomilho/kevernote-elm)

### Resources

###### Elm resources

  - [Online Elm REPL](http://elm-lang.org/try)

  - [Elm's StartApp docs](http://package.elm-lang.org/packages/evancz/start-app/1.0.1)

  - [The Pragmatic Studio's Elm Course](https://pragmaticstudio.com/elm)

  - [Elm's Subreddit](https://www.reddit.com/r/elm/)

###### Elm tutorials

  - [Checkerboard Grid Tutorial](https://github.com/TheSeamau5/elm-checkerboardgrid-tutorial)

  - [Elm's architecture](http://elm-lang.org/guide/architecture)
  
###### Presentations

  - [Shipping a Production Web App in Elm](https://presentate.com/rtfeldman/talks/shipping-a-production-web-app-in-elm) *by* [Richard Feldman](https://twitter.com/rtfeldman) WARNING: Cat overflow
  
###### Videos (sorted as a suggestion)

  - [Simplicity Matters](https://www.youtube.com/watch?v=rI8tNMsozo0) *by* [Rich Hickey](https://twitter.com/richhickey)

  - [Reactive Extensions for JavaScript](https://channel9.msdn.com/Events/MIX/MIX10/FTL01) *by* [Eric Maijer](https://twitter.com/headinthebox)
 
  - [Live React: Hot Reloading with Time Travel](https://www.youtube.com/watch?v=xsSnOQynTHs) *by* [Dan Abramov](https://twitter.com/dan_abramov)

  - [Controlling Time and Space: understanding the many formulations of FRP](https://www.youtube.com/watch?v=Agu6jipKfYw) *by* [Evan Czaplicki](https://twitter.com/czaplic)  

  - [My adventure with Elm](https://www.youtube.com/watch?v=cBVXyxt-9_Q) *by* [Yan Cui](https://twitter.com/theburningmonk)
  
  - [PureScript (Maybe This Time We Get JavaScript Right)](https://www.youtube.com/watch?v=yIlDBPiMb0o) *by* [Bodil Stokke](https://twitter.com/bodil)
  
  - [Let's be mainstream! User focused design in Elm](https://www.youtube.com/watch?v=oYk8CKH7OhE&feature=youtu.be) *by* [Evan Czaplicki](https://twitter.com/czaplic)
  
  - [The Essence of FRP](http://begriffs.com/posts/2015-07-22-essence-of-frp.html) *by* [Conal Elliott](http://conal.net/blog/)

  - [Functional Frontend Frontier](https://www.youtube.com/watch?v=06M0jdYYSis) *by* [Richard Feldman](https://twitter.com/rtfeldman)

  - [What does it mean to be Reactive?](https://www.youtube.com/watch?v=sTSQlYX5DU0) *by* [Eric Maijer](https://twitter.com/headinthebox)

  - [Duality and the End of Reactive](https://channel9.msdn.com/Events/Lang-NEXT/Lang-NEXT-2014/Keynote-Duality) *by* [Eric Maijer](https://twitter.com/headinthebox)

  - [Fundamentalist Functional Programming](https://www.youtube.com/watch?v=UuamC0T3hv8) *by* [Eric Maijer](https://twitter.com/headinthebox)
