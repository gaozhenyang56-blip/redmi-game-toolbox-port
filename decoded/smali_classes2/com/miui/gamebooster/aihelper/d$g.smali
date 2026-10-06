.class final Lcom/miui/gamebooster/aihelper/d$g;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/gamebooster/aihelper/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/aihelper/d;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/d$g;->a:Lcom/miui/gamebooster/aihelper/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/gamebooster/aihelper/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/gamebooster/aihelper/e;

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/d$g;->a:Lcom/miui/gamebooster/aihelper/d;

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/d;->b(Lcom/miui/gamebooster/aihelper/d;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/aihelper/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/aihelper/d$g;->a()Lcom/miui/gamebooster/aihelper/e;

    move-result-object v0

    return-object v0
.end method
