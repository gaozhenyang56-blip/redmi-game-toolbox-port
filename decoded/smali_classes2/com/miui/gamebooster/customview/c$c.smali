.class Lcom/miui/gamebooster/customview/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/LevelSeekBarView$a;


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

    iput-object p1, p0, Lcom/miui/gamebooster/customview/c$c;->a:Lcom/miui/gamebooster/customview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c$c;->a:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, La8/j;->p(ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c$c;->a:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/c;->k(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/c$c;->a:Lcom/miui/gamebooster/customview/c;

    iput p1, v0, Lcom/miui/gamebooster/customview/c;->q:I

    invoke-static {}, La8/j;->l()V

    return-void
.end method
