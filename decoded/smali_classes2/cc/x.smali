.class public final synthetic Lcc/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc/f;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lbk/y;


# direct methods
.method public synthetic constructor <init>(ZLbk/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcc/x;->a:Z

    iput-object p2, p0, Lcc/x;->b:Lbk/y;

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 2

    iget-boolean v0, p0, Lcc/x;->a:Z

    iget-object v1, p0, Lcc/x;->b:Lbk/y;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->e0(ZLbk/y;J)Z

    move-result p1

    return p1
.end method
