.class public final synthetic Lcom/miui/applicationlock/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/widget/n;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/widget/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/m;->a:Lcom/miui/applicationlock/widget/n;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/m;->a:Lcom/miui/applicationlock/widget/n;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/applicationlock/widget/n;->i(Lcom/miui/applicationlock/widget/n;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
