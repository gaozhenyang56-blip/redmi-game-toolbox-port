.class public final synthetic La4/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/taskitem/InCallConditionItem;

.field public final synthetic b:Lcom/miui/autotask/taskitem/InCallConditionItem;

.field public final synthetic c:Lcom/miui/autotask/view/RecyclerViewPreference$c;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/y0;->a:Lcom/miui/autotask/taskitem/InCallConditionItem;

    iput-object p2, p0, La4/y0;->b:Lcom/miui/autotask/taskitem/InCallConditionItem;

    iput-object p3, p0, La4/y0;->c:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    iput p4, p0, La4/y0;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, La4/y0;->a:Lcom/miui/autotask/taskitem/InCallConditionItem;

    iget-object v1, p0, La4/y0;->b:Lcom/miui/autotask/taskitem/InCallConditionItem;

    iget-object v2, p0, La4/y0;->c:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    iget v3, p0, La4/y0;->d:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, La4/e2;->o0(Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/taskitem/InCallConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;ILandroid/content/DialogInterface;I)V

    return-void
.end method
