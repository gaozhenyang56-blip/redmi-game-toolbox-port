.class public Li1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
    }
.end annotation


# static fields
.field private static final b:Li1/g;


# instance fields
.field private final a:Lm/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/f<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li1/g;

    invoke-direct {v0}, Li1/g;-><init>()V

    sput-object v0, Li1/g;->b:Li1/g;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/f;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lm/f;-><init>(I)V

    iput-object v0, p0, Li1/g;->a:Lm/f;

    return-void
.end method

.method public static b()Li1/g;
    .locals 1

    sget-object v0, Li1/g;->b:Li1/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/airbnb/lottie/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Li1/g;->a:Lm/f;

    invoke-virtual {v0, p1}, Lm/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/d;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/airbnb/lottie/d;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li1/g;->a:Lm/f;

    invoke-virtual {v0, p1, p2}, Lm/f;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
