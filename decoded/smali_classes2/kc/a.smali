.class public final synthetic Lkc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/privacymanager/AppBackgroundManagerActivity;

.field public final synthetic b:Landroid/content/pm/PackageInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/privacymanager/AppBackgroundManagerActivity;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/a;->a:Lcom/miui/permcenter/privacymanager/AppBackgroundManagerActivity;

    iput-object p2, p0, Lkc/a;->b:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lkc/a;->a:Lcom/miui/permcenter/privacymanager/AppBackgroundManagerActivity;

    iget-object v1, p0, Lkc/a;->b:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/permcenter/privacymanager/AppBackgroundManagerActivity;->c0(Lcom/miui/permcenter/privacymanager/AppBackgroundManagerActivity;Landroid/content/pm/PackageInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
