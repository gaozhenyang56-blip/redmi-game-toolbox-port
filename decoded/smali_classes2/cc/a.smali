.class public final synthetic Lcc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/permissions/AppPermissionItemActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/permissions/AppPermissionItemActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/a;->a:Lcom/miui/permcenter/permissions/AppPermissionItemActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcc/a;->a:Lcom/miui/permcenter/permissions/AppPermissionItemActivity;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/AppPermissionItemActivity;->d0(Lcom/miui/permcenter/permissions/AppPermissionItemActivity;)V

    return-void
.end method
