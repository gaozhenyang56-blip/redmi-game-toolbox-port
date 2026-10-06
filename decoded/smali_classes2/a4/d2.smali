.class public final synthetic La4/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/e2$g;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/taskitem/BatteryConditionItem;

.field public final synthetic b:Lcom/miui/autotask/view/RecyclerViewPreference$c;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/taskitem/BatteryConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/d2;->a:Lcom/miui/autotask/taskitem/BatteryConditionItem;

    iput-object p2, p0, La4/d2;->b:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    iput p3, p0, La4/d2;->c:I

    return-void
.end method


# virtual methods
.method public final a([I)V
    .locals 3

    iget-object v0, p0, La4/d2;->a:Lcom/miui/autotask/taskitem/BatteryConditionItem;

    iget-object v1, p0, La4/d2;->b:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    iget v2, p0, La4/d2;->c:I

    invoke-static {v0, v1, v2, p1}, La4/e2;->j0(Lcom/miui/autotask/taskitem/BatteryConditionItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I[I)V

    return-void
.end method
