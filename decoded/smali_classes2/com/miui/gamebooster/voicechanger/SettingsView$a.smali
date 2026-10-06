.class Lcom/miui/gamebooster/voicechanger/SettingsView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/voicechanger/SettingsView;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/voicechanger/SettingsView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/voicechanger/SettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView$a;->a:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView$a;->a:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-static {p1, p3}, Lcom/miui/gamebooster/voicechanger/SettingsView;->j(Lcom/miui/gamebooster/voicechanger/SettingsView;I)I

    move-result p1

    invoke-static {}, Lr8/b;->a()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Lr8/b;->l(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView$a;->a:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-static {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->k(Lcom/miui/gamebooster/voicechanger/SettingsView;)Lcom/miui/gamebooster/voicechanger/SettingsView$c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/voicechanger/SettingsView$a;->a:Lcom/miui/gamebooster/voicechanger/SettingsView;

    invoke-static {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView;->k(Lcom/miui/gamebooster/voicechanger/SettingsView;)Lcom/miui/gamebooster/voicechanger/SettingsView$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/gamebooster/voicechanger/SettingsView$c;->c()V

    :cond_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
