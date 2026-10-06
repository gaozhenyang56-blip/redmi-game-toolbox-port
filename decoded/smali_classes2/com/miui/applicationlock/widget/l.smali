.class public final synthetic Lcom/miui/applicationlock/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/widget/n;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/widget/n;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/l;->a:Lcom/miui/applicationlock/widget/n;

    iput-object p2, p0, Lcom/miui/applicationlock/widget/l;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/l;->a:Lcom/miui/applicationlock/widget/n;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/l;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/miui/applicationlock/widget/n;->h(Lcom/miui/applicationlock/widget/n;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method
