.class Li7/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li7/i;->J(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Li7/i;


# direct methods
.method constructor <init>(Li7/i;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Li7/i$d;->c:Li7/i;

    iput-object p2, p0, Li7/i$d;->a:Ljava/lang/String;

    iput-object p3, p0, Li7/i$d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Li7/i$d;Ljava/lang/String;Landroid/content/DialogInterface;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li7/i$d;->b(Ljava/lang/String;Landroid/content/DialogInterface;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Landroid/content/DialogInterface;Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Li7/k;->a(Ljava/lang/String;)V

    check-cast p2, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-static {p2}, Li7/i;->i(Z)V

    iget-object p2, p0, Li7/i$d;->c:Li7/i;

    new-instance v1, Li7/a;

    const-string v2, ""

    invoke-direct {v1, p1, v2, v0}, Li7/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, p3, v1}, Li7/i;->O(Landroid/content/Context;Li7/a;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p2

    iget-object v0, p0, Li7/i$d;->a:Ljava/lang/String;

    iget-object v1, p0, Li7/i$d;->b:Landroid/content/Context;

    new-instance v2, Li7/j;

    invoke-direct {v2, p0, v0, p1, v1}, Li7/j;-><init>(Li7/i$d;Ljava/lang/String;Landroid/content/DialogInterface;Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Lef/z;->b(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
