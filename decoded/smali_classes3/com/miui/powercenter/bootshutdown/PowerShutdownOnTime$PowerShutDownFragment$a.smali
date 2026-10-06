.class Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    invoke-static {p2}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->n0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
