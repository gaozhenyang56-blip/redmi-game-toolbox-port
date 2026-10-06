.class public Lp1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/airbnb/lottie/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp1/e;

    invoke-direct {v0}, Lp1/e;-><init>()V

    sput-object v0, Lp1/f;->a:Lcom/airbnb/lottie/h;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lp1/f;->a:Lcom/airbnb/lottie/h;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lp1/f;->a:Lcom/airbnb/lottie/h;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lp1/f;->a:Lcom/airbnb/lottie/h;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lp1/f;->a:Lcom/airbnb/lottie/h;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
