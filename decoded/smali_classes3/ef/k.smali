.class public final synthetic Lef/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lef/m;

.field public final synthetic b:Landroid/widget/CheckBox;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lef/m;Landroid/widget/CheckBox;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/k;->a:Lef/m;

    iput-object p2, p0, Lef/k;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lef/k;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lef/k;->a:Lef/m;

    iget-object v1, p0, Lef/k;->b:Landroid/widget/CheckBox;

    iget-object v2, p0, Lef/k;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lef/m;->l(Lef/m;Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
