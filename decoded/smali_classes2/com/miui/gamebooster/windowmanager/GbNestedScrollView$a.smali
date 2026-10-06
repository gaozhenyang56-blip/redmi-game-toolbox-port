.class Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->b:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->a:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->b:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iget-object v2, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->b:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {v2}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->L(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->a:I

    if-ne v2, p1, :cond_0

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->a:I

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->b:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {p1, v0}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->M(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->a:I

    iget-object p1, p0, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView$a;->b:Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;

    invoke-static {p1}, Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;->S(Lcom/miui/gamebooster/windowmanager/GbNestedScrollView;)V

    :goto_0
    return v1

    :cond_1
    return v0
.end method
