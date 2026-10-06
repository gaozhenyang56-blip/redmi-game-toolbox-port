.class public final Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->g0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/m;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0, v1}, Ljc/m;->E(Ljc/m;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity$j;->a:Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;

    invoke-static {p1}, Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;->m0(Lcom/miui/permcenter/privacycenter/usage/PermissionUsageRecordActivity;)Ljc/m;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v2, v3, v1}, Ljc/m;->C(Ljc/m;ZIILjava/lang/Object;)V

    return-void
.end method
