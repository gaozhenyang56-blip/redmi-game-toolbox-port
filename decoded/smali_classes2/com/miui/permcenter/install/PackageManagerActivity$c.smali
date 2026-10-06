.class Lcom/miui/permcenter/install/PackageManagerActivity$c;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/install/PackageManagerActivity;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lxb/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/permcenter/install/PackageManagerActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/PackageManagerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$c;->q:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/install/PackageManagerActivity$c;->J()Lxb/f;

    move-result-object v0

    return-object v0
.end method

.method public J()Lxb/f;
    .locals 4

    invoke-virtual {p0}, Lq0/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxb/b;->m(Landroid/content/Context;)Lxb/b;

    move-result-object v1

    invoke-virtual {v1}, Lxb/b;->k()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lxb/f;

    invoke-direct {v2}, Lxb/f;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const v3, 0x7f121566

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lxb/f;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lxb/f;->c(Ljava/util/List;)V

    new-instance v0, Lcom/miui/permcenter/install/PackageManagerActivity$c$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/PackageManagerActivity$c$a;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity$c;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v2
.end method
