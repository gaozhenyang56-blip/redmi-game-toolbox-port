.class Lcom/miui/gamebooster/predownload/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/predownload/b$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/gamebooster/predownload/b$b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/predownload/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/b$b$a;->b:Lcom/miui/gamebooster/predownload/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/b$b$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v0, v0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v0, v0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v0, v0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v0, v0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a9b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/predownload/b$b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->b:Lcom/miui/gamebooster/predownload/b$b;

    iget-object v0, v0, Lcom/miui/gamebooster/predownload/b$b;->c:Landroid/widget/TextView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "."

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, ".."

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, "..."

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/miui/gamebooster/predownload/b$b$a;->a:Ljava/lang/String;

    return-void
.end method
