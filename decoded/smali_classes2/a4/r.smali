.class public final synthetic La4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/miui/autotask/taskitem/ChargeConditionItem;


# direct methods
.method public synthetic constructor <init>(ZLcom/miui/autotask/taskitem/ChargeConditionItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La4/r;->a:Z

    iput-object p2, p0, La4/r;->b:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, La4/r;->a:Z

    iget-object v1, p0, La4/r;->b:Lcom/miui/autotask/taskitem/ChargeConditionItem;

    invoke-static {v0, v1, p1, p2}, La4/e2;->G(ZLcom/miui/autotask/taskitem/ChargeConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
