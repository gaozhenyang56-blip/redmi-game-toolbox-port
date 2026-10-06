.class public final synthetic Lcom/miui/permcenter/install/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/install/PackageManagerActivity$d$a;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/install/PackageManagerActivity$d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/install/a;->a:Lcom/miui/permcenter/install/PackageManagerActivity$d$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/a;->a:Lcom/miui/permcenter/install/PackageManagerActivity$d$a;

    invoke-static {v0, p1}, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->c(Lcom/miui/permcenter/install/PackageManagerActivity$d$a;Landroid/view/View;)V

    return-void
.end method
