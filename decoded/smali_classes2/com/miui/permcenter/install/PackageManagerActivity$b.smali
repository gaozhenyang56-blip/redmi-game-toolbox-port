.class Lcom/miui/permcenter/install/PackageManagerActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/install/PackageManagerActivity;->f0(Lmiuix/appcompat/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/install/PackageManagerActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/PackageManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$b;->a:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$b;->a:Lcom/miui/permcenter/install/PackageManagerActivity;

    const-class v1, Lcom/miui/permcenter/SettingsAcitivty;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_settings_title"

    const v1, 0x7f120097

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$b;->a:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":miui:starting_window_label"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$b;->a:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
