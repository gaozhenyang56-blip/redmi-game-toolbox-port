.class public final synthetic Lxc/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/AppPermissionInfo;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lxc/b;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/Context;IILjava/lang/String;Lxc/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc/t;->a:Lcom/miui/permcenter/AppPermissionInfo;

    iput-object p2, p0, Lxc/t;->b:Landroid/content/Context;

    iput p3, p0, Lxc/t;->c:I

    iput p4, p0, Lxc/t;->d:I

    iput-object p5, p0, Lxc/t;->e:Ljava/lang/String;

    iput-object p6, p0, Lxc/t;->f:Lxc/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lxc/t;->a:Lcom/miui/permcenter/AppPermissionInfo;

    iget-object v1, p0, Lxc/t;->b:Landroid/content/Context;

    iget v2, p0, Lxc/t;->c:I

    iget v3, p0, Lxc/t;->d:I

    iget-object v4, p0, Lxc/t;->e:Ljava/lang/String;

    iget-object v5, p0, Lxc/t;->f:Lxc/b;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lxc/u;->b(Lcom/miui/permcenter/AppPermissionInfo;Landroid/content/Context;IILjava/lang/String;Lxc/b;Landroid/content/DialogInterface;I)V

    return-void
.end method
