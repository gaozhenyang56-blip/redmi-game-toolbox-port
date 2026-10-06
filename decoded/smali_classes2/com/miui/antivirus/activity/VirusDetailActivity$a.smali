.class Lcom/miui/antivirus/activity/VirusDetailActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/VirusDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/VirusDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/VirusDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-static {p1}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/VirusDetailActivity;->d0(Lcom/miui/antivirus/activity/VirusDetailActivity;)Lcom/miui/antivirus/model/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo2/g;->v(Lcom/miui/antivirus/model/d;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-static {p1}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/VirusDetailActivity;->d0(Lcom/miui/antivirus/activity/VirusDetailActivity;)Lcom/miui/antivirus/model/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo2/g;->n0(Lcom/miui/antivirus/model/d;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-static {v1}, Lcom/miui/antivirus/activity/VirusDetailActivity;->d0(Lcom/miui/antivirus/activity/VirusDetailActivity;)Lcom/miui/antivirus/model/d;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    iget-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/VirusDetailActivity;->d0(Lcom/miui/antivirus/activity/VirusDetailActivity;)Lcom/miui/antivirus/model/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object p1

    sget-object v0, Lo2/g$l;->d:Lo2/g$l;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/VirusDetailActivity$a;->a:Lcom/miui/antivirus/activity/VirusDetailActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/VirusDetailActivity;->d0(Lcom/miui/antivirus/activity/VirusDetailActivity;)Lcom/miui/antivirus/model/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lq2/b$b;->g(ZZLjava/lang/String;)V

    return-void
.end method
