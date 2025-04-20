use actix_web::{get, App, HttpResponse, HttpServer, Responder};

#[get("/")]
async fn index() -> impl Responder {
    HttpResponse::Ok().body("Hello from Baby Records Rust Backendi!")
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    println!("");

    HttpServer::new(|| {
        App::new().service(index)
    })
    .bind(("0.0.0.0", 8080))?
    .run()
    .await
}

