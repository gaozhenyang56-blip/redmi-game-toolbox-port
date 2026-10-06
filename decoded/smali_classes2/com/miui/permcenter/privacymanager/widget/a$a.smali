.class Lcom/miui/permcenter/privacymanager/widget/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacymanager/widget/a;->f(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:[I


# direct methods
.method constructor <init>(Landroid/content/Context;[I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacymanager/widget/a$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/permcenter/privacymanager/widget/a$a;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/widget/a$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lmc/c;->x(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;

    invoke-direct {v1}, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->a:J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llc/a;

    iget v4, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->c:I

    iget v3, v3, Llc/a;->c:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->c:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llc/a;

    iget v5, v5, Llc/a;->c:I

    add-int/2addr v3, v5

    goto :goto_2

    :cond_2
    iget v4, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->c:I

    if-le v3, v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->a:J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->b:Ljava/util/ArrayList;

    iput v3, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->c:I

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;

    invoke-direct {v1}, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;-><init>()V

    const-wide v2, 0x200000000000L

    iput-wide v2, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->a:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;->b:Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lcom/miui/permcenter/privacymanager/widget/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/permcenter/privacymanager/widget/a$a;->b:[I

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/privacymanager/widget/a;->a(Landroid/content/Context;Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget$a;[I)V

    const-string v0, "privacyprotect_behavoir_widget_show"

    invoke-static {v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    return-void
.end method
