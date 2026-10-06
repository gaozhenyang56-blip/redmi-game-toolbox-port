.class public final synthetic Ld7/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh7/g$b;


# instance fields
.field public final synthetic a:Ld7/l$d;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

.field public final synthetic d:Landroid/view/WindowManager;


# direct methods
.method public synthetic constructor <init>(Ld7/l$d;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/m;->a:Ld7/l$d;

    iput-object p2, p0, Ld7/m;->b:Landroid/view/View;

    iput-object p3, p0, Ld7/m;->c:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iput-object p4, p0, Ld7/m;->d:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 6

    iget-object v0, p0, Ld7/m;->a:Ld7/l$d;

    iget-object v1, p0, Ld7/m;->b:Landroid/view/View;

    iget-object v2, p0, Ld7/m;->c:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iget-object v3, p0, Ld7/m;->d:Landroid/view/WindowManager;

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Ld7/l$d;->c(Ld7/l$d;Landroid/view/View;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;ZZ)V

    return-void
.end method
