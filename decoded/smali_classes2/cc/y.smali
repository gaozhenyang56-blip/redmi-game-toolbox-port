.class public final synthetic Lcc/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lak/a;


# direct methods
.method public synthetic constructor <init>(Lak/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/y;->a:Lak/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcc/y;->a:Lak/a;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->i0(Lak/a;)V

    return-void
.end method
