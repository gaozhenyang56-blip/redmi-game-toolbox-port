.class public final synthetic Ld7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ld7/l;

.field public final synthetic b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

.field public final synthetic c:Landroid/view/WindowManager;


# direct methods
.method public synthetic constructor <init>(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/i;->a:Ld7/l;

    iput-object p2, p0, Ld7/i;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iput-object p3, p0, Ld7/i;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ld7/i;->a:Ld7/l;

    iget-object v1, p0, Ld7/i;->b:Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    iget-object v2, p0, Ld7/i;->c:Landroid/view/WindowManager;

    invoke-static {v0, v1, v2, p1}, Ld7/l;->c(Ld7/l;Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;Landroid/view/WindowManager;Landroid/view/View;)V

    return-void
.end method
