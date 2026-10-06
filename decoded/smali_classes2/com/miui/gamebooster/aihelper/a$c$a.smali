.class public final Lcom/miui/gamebooster/aihelper/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/a$c;->d(Lcom/miui/gamebooster/aihelper/AISettingDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/aihelper/AISettingDTO;

.field final synthetic b:Lcom/miui/gamebooster/aihelper/a;

.field final synthetic c:Lcom/miui/gamebooster/aihelper/a$c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/AISettingDTO;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c$a;->a:Lcom/miui/gamebooster/aihelper/AISettingDTO;

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/a$c$a;->b:Lcom/miui/gamebooster/aihelper/a;

    iput-object p3, p0, Lcom/miui/gamebooster/aihelper/a$c$a;->c:Lcom/miui/gamebooster/aihelper/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "seekbar for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a$c$a;->a:Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-virtual {v0}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " attached"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIHelperAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c$a;->a:Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getThirdKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a$c$a;->b:Lcom/miui/gamebooster/aihelper/a;

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a$c$a;->c:Lcom/miui/gamebooster/aihelper/a$c;

    iget-object v2, p0, Lcom/miui/gamebooster/aihelper/a$c$a;->a:Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-static {v0}, Lcom/miui/gamebooster/aihelper/a;->k(Lcom/miui/gamebooster/aihelper/a;)Lcom/miui/gamebooster/aihelper/a$d;

    move-result-object v0

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/a$c;->c(Lcom/miui/gamebooster/aihelper/a$c;)Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p1, v3}, Lcom/miui/gamebooster/aihelper/a$d;->b(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/miui/gamebooster/aihelper/a$c;->c(Lcom/miui/gamebooster/aihelper/a$c;)Lmiuix/androidbasewidget/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setThirdValue(Ljava/lang/Integer;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "seekbar for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " detached"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIHelperAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
