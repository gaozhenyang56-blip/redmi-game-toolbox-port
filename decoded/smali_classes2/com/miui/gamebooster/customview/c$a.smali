.class Lcom/miui/gamebooster/customview/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/customview/BarrageColorPickView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/c$a;->a:Lcom/miui/gamebooster/customview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c$a;->a:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gamebooster/customview/c;->j(II)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/c$a;->a:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, La8/j;->o(ILandroid/content/Context;)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/c$a;->a:Lcom/miui/gamebooster/customview/c;

    iput p1, p2, Lcom/miui/gamebooster/customview/c;->r:I

    invoke-static {}, La8/j;->l()V

    return-void
.end method
