.class Lcom/miui/optimizemanage/memoryclean/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/memoryclean/a;->l(Lcom/miui/optimizemanage/memoryclean/a$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/memoryclean/a$e;

.field final synthetic b:Ljb/d;

.field final synthetic c:I

.field final synthetic d:Lcom/miui/optimizemanage/memoryclean/a;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/memoryclean/a;Lcom/miui/optimizemanage/memoryclean/a$e;Ljb/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->d:Lcom/miui/optimizemanage/memoryclean/a;

    iput-object p2, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->a:Lcom/miui/optimizemanage/memoryclean/a$e;

    iput-object p3, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->b:Ljb/d;

    iput p4, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->a:Lcom/miui/optimizemanage/memoryclean/a$e;

    iget-object p1, p1, Lcom/miui/optimizemanage/memoryclean/a$e;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->b:Ljb/d;

    iget-boolean v0, v0, Ljb/d;->c:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->d:Lcom/miui/optimizemanage/memoryclean/a;

    invoke-static {p1}, Lcom/miui/optimizemanage/memoryclean/a;->k(Lcom/miui/optimizemanage/memoryclean/a;)Lcom/miui/optimizemanage/memoryclean/a$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->d:Lcom/miui/optimizemanage/memoryclean/a;

    invoke-static {p1}, Lcom/miui/optimizemanage/memoryclean/a;->k(Lcom/miui/optimizemanage/memoryclean/a;)Lcom/miui/optimizemanage/memoryclean/a$d;

    move-result-object p1

    iget v0, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->c:I

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/a$a;->b:Ljb/d;

    invoke-interface {p1, v0, v1}, Lcom/miui/optimizemanage/memoryclean/a$d;->a(ILjb/d;)V

    :cond_0
    return-void
.end method
