# Tokio

## [Tutorial](https://tokio.rs/tokio/tutorial)

### Not to use tokio
* Threading: Speedup when running in parallel, use **rayon** [MixMatch](https://ryhl.io/blog/async-what-is-blocking/#the-rayon-crate)
* Reading lots of files (could use a threadpool, as the oerpating systems do not provide asynchonous file apis)
* Sending a single web request.  Needs blocking requres, but using `reqwest` which is already async makes it hard. use [bridging with sync code](https://tokio.rs/tokio/topics/bridging)


### 
* Integration with actor based using *Actix*
