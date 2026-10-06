.class Lnm/b$b;
.super Lmiuix/animation/property/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Landroid/widget/CompoundButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lnm/b;


# direct methods
.method constructor <init>(Lnm/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnm/b$b;->a:Lnm/b;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)F
    .locals 0

    iget-object p1, p0, Lnm/b$b;->a:Lnm/b;

    invoke-static {p1}, Lnm/b;->b(Lnm/b;)F

    move-result p1

    return p1
.end method

.method public b(Landroid/widget/CompoundButton;F)V
    .locals 0

    iget-object p1, p0, Lnm/b$b;->a:Lnm/b;

    invoke-static {p1, p2}, Lnm/b;->c(Lnm/b;F)F

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Lnm/b$b;->a(Landroid/widget/CompoundButton;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1, p2}, Lnm/b$b;->b(Landroid/widget/CompoundButton;F)V

    return-void
.end method
