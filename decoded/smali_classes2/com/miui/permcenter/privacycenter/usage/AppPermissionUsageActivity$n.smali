.class public final Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->l0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljc/m;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$n;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v1}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->q0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljc/m;->D(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
