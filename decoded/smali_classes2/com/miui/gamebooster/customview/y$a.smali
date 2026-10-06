.class Lcom/miui/gamebooster/customview/y$a;
.super Lu8/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/y;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    invoke-direct {p0}, Lu8/e;-><init>()V

    return-void
.end method


# virtual methods
.method public h(ILq6/i;Landroid/view/View;Lcom/miui/gamebooster/voicechanger/model/VoiceModel;)V
    .locals 1

    invoke-virtual {p4}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La8/j2;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, La8/j2;->a()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.gamebooster.action.XUNYOU_ALERT_ACTIVITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "alertType"

    const-string p3, "voice_changer_permission_dialog"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->j(Lcom/miui/gamebooster/customview/y;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    const p3, 0x7f12097a

    invoke-virtual {p1, p2, p3}, Lo8/i;->e(Landroid/view/ViewGroup;I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/y;->b0()V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    check-cast p3, Lcom/miui/gamebooster/customview/VoiceModeView;

    invoke-static {p1, p3}, Lcom/miui/gamebooster/customview/y;->n(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/customview/VoiceModeView;)Lcom/miui/gamebooster/customview/VoiceModeView;

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->setSelected(Z)V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p2}, Lcom/miui/gamebooster/customview/y;->x(Lcom/miui/gamebooster/customview/y;)Lq6/f;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p2, p0, Lcom/miui/gamebooster/customview/y$a;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {p4}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0, p1}, Lcom/miui/gamebooster/customview/y;->z(Lcom/miui/gamebooster/customview/y;Lcom/miui/gamebooster/customview/VoiceModeView;Ljava/lang/String;Z)V

    invoke-static {}, Lo8/g;->b()Lo8/g;

    move-result-object p1

    invoke-virtual {p4}, Lcom/miui/gamebooster/voicechanger/model/VoiceModel;->getPreviewUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo8/g;->d(Ljava/lang/String;)V

    return-void
.end method
