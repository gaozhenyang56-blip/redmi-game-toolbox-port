.class Lcom/miui/permcenter/install/PackageManagerActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/install/PackageManagerActivity;
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

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$a;->a:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$a;->a:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-static {p1}, Lcom/miui/permcenter/install/PackageManagerActivity;->e0(Lcom/miui/permcenter/install/PackageManagerActivity;)V

    iget-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$a;->a:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object p1

    invoke-virtual {p1}, Lq0/c;->h()V

    return-void
.end method
