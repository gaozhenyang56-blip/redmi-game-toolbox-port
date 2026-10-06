.class public final synthetic Lef/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lef/m;

.field public final synthetic b:Landroid/widget/CheckBox;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lef/m;Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/i;->a:Lef/m;

    iput-object p2, p0, Lef/i;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lef/i;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Lef/i;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lef/i;->a:Lef/m;

    iget-object v1, p0, Lef/i;->b:Landroid/widget/CheckBox;

    iget-object v2, p0, Lef/i;->c:Ljava/lang/Runnable;

    iget-object v3, p0, Lef/i;->d:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lef/m;->b(Lef/m;Landroid/widget/CheckBox;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
