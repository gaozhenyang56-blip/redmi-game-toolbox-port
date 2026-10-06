.class public final synthetic La4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/taskitem/WlanConditionItem;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/taskitem/WlanConditionItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/k;->a:Lcom/miui/autotask/taskitem/WlanConditionItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, La4/k;->a:Lcom/miui/autotask/taskitem/WlanConditionItem;

    invoke-static {v0, p1, p2}, La4/e2;->V(Lcom/miui/autotask/taskitem/WlanConditionItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
