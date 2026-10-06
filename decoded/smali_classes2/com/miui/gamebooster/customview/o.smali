.class public final synthetic Lcom/miui/gamebooster/customview/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/customview/s;

.field public final synthetic b:Landroid/widget/RadioGroup;

.field public final synthetic c:Lcom/miui/gamebooster/customview/s$b;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/customview/s;Landroid/widget/RadioGroup;Lcom/miui/gamebooster/customview/s$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/customview/o;->a:Lcom/miui/gamebooster/customview/s;

    iput-object p2, p0, Lcom/miui/gamebooster/customview/o;->b:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/miui/gamebooster/customview/o;->c:Lcom/miui/gamebooster/customview/s$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/o;->a:Lcom/miui/gamebooster/customview/s;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/o;->b:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/miui/gamebooster/customview/o;->c:Lcom/miui/gamebooster/customview/s$b;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/gamebooster/customview/s;->c(Lcom/miui/gamebooster/customview/s;Landroid/widget/RadioGroup;Lcom/miui/gamebooster/customview/s$b;Landroid/view/View;)V

    return-void
.end method
