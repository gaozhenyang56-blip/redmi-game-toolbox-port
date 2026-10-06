.class public final synthetic Lz2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/y;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lz2/y;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->i0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
