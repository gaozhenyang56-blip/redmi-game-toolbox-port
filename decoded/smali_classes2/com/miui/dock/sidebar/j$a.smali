.class Lcom/miui/dock/sidebar/j$a;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/sidebar/j;->a0(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/j;


# direct methods
.method constructor <init>(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/sidebar/j$a;->a:Lcom/miui/dock/sidebar/j;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "SidebarWrapper"

    const-string v0, "vectorDrawable onAnimationEnd!"

    invoke-static {p1, v0}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/j$a;->a:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->B()V

    return-void
.end method
