.class public final synthetic Lt9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lt9/e;

.field public final synthetic b:Lcom/miui/permcenter/model/a;


# direct methods
.method public synthetic constructor <init>(Lt9/e;Lcom/miui/permcenter/model/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/a;->a:Lt9/e;

    iput-object p2, p0, Lt9/a;->b:Lcom/miui/permcenter/model/a;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lt9/a;->a:Lt9/e;

    iget-object v1, p0, Lt9/a;->b:Lcom/miui/permcenter/model/a;

    invoke-static {v0, v1, p1, p2}, Lt9/e;->k(Lt9/e;Lcom/miui/permcenter/model/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
