.class public final synthetic Lu9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lu9/c;

.field public final synthetic b:Lcom/miui/permcenter/model/a;


# direct methods
.method public synthetic constructor <init>(Lu9/c;Lcom/miui/permcenter/model/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu9/a;->a:Lu9/c;

    iput-object p2, p0, Lu9/a;->b:Lcom/miui/permcenter/model/a;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lu9/a;->a:Lu9/c;

    iget-object v1, p0, Lu9/a;->b:Lcom/miui/permcenter/model/a;

    invoke-static {v0, v1, p1, p2}, Lu9/c;->l(Lu9/c;Lcom/miui/permcenter/model/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
