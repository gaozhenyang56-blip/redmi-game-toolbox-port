.class final Lcom/miui/gamebooster/aihelper/i$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/gamebooster/aihelper/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/aihelper/i;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/i$c;->a:Lcom/miui/gamebooster/aihelper/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/gamebooster/aihelper/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/gamebooster/aihelper/a;

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/i$c;->a:Lcom/miui/gamebooster/aihelper/i;

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/i;->i(Lcom/miui/gamebooster/aihelper/i;)Lcom/miui/gamebooster/aihelper/i$e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/aihelper/a;-><init>(Lcom/miui/gamebooster/aihelper/a$d;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/aihelper/i$c;->a()Lcom/miui/gamebooster/aihelper/a;

    move-result-object v0

    return-object v0
.end method
