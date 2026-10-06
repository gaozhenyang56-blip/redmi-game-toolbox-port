.class public final synthetic Lcom/miui/electricrisk/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/electricrisk/v;->a:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/electricrisk/v;->a:Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    invoke-static {v0, p1}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->d(Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;Landroid/view/View;)V

    return-void
.end method
