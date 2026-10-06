.class Lcom/miui/permcenter/autostart/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/autostart/a;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/a$a;->a:Lcom/miui/permcenter/autostart/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a$a;->a:Lcom/miui/permcenter/autostart/a;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/a;->m(Lcom/miui/permcenter/autostart/a;)Lcom/miui/permcenter/autostart/a$f;

    move-result-object v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/miui/permcenter/autostart/a$f;->a(IZ)V

    :cond_0
    return-void
.end method
