.class Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$c;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$c;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-static {p1}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->d0(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lgd/c;->B2(I)V

    const/4 p1, 0x1

    return p1
.end method
