.class Lcom/miui/powercenter/PowerSettingsFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/PowerSettingsFragment;->i1(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/PowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$h;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$h;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->p0(Lcom/miui/powercenter/PowerSettingsFragment;)Loe/a;

    move-result-object p1

    const/16 p2, 0x62

    invoke-interface {p1, p2}, Loe/a;->e(I)V

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$h;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/miui/powercenter/PowerSettingsFragment;->r0(Lcom/miui/powercenter/PowerSettingsFragment;I)I

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$h;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {p1}, Lcom/miui/powercenter/PowerSettingsFragment;->s0(Lcom/miui/powercenter/PowerSettingsFragment;)V

    return-void
.end method
