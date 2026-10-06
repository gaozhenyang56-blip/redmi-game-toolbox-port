.class Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->d0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->e0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->i0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121531

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->e0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->j0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->e0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->k0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;->f0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    return-void
.end method
