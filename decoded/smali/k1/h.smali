.class public Lk1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk1/h$a;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk1/h$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lk1/h;->b:Lk1/h$a;

    iput-boolean p3, p0, Lk1/h;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->l()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Animation contains merge paths but they are disabled."

    invoke-static {p1}, Lp1/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lf1/l;

    invoke-direct {p1, p0}, Lf1/l;-><init>(Lk1/h;)V

    return-object p1
.end method

.method public b()Lk1/h$a;
    .locals 1

    iget-object v0, p0, Lk1/h;->b:Lk1/h$a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lk1/h;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/h;->b:Lk1/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
