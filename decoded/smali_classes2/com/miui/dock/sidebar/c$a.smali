.class Lcom/miui/dock/sidebar/c$a;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/sidebar/c;->s(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/c;


# direct methods
.method constructor <init>(Lcom/miui/dock/sidebar/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/sidebar/c$a;->a:Lcom/miui/dock/sidebar/c;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/c$a;->a:Lcom/miui/dock/sidebar/c;

    invoke-static {p1}, Lcom/miui/dock/sidebar/c;->c(Lcom/miui/dock/sidebar/c;)Lcom/miui/dock/sidebar/SidebarColorParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/SidebarColorParams;->getCurrentColor()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/dock/sidebar/c;->b(Lcom/miui/dock/sidebar/c;I)I

    iget-object p1, p0, Lcom/miui/dock/sidebar/c$a;->a:Lcom/miui/dock/sidebar/c;

    invoke-static {p1}, Lcom/miui/dock/sidebar/c;->d(Lcom/miui/dock/sidebar/c;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/dock/sidebar/c$a;->a:Lcom/miui/dock/sidebar/c;

    invoke-static {p2}, Lcom/miui/dock/sidebar/c;->a(Lcom/miui/dock/sidebar/c;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/c$a;->a:Lcom/miui/dock/sidebar/c;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
