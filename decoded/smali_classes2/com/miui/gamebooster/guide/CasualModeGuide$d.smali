.class final Lcom/miui/gamebooster/guide/CasualModeGuide$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;->E(Lcom/miui/gamebooster/guide/CasualModeGuide$a;Lcom/miui/gamebooster/guide/CasualModeGuide$AnimConfig$Anim;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$d;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/LottieAnimationView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$showAnimGuide"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$d;->a(Lcom/airbnb/lottie/LottieAnimationView;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
