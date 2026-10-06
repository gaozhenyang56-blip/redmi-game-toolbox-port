.class Lcom/miui/autotask/view/TextEditPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/view/TextEditPreference;->onBindViewHolder(Landroidx/preference/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/view/TextEditPreference;


# direct methods
.method constructor <init>(Lcom/miui/autotask/view/TextEditPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/TextEditPreference$a;->a:Lcom/miui/autotask/view/TextEditPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/view/TextEditPreference$a;->a:Lcom/miui/autotask/view/TextEditPreference;

    invoke-static {v0, p1}, Lcom/miui/autotask/view/TextEditPreference;->e(Lcom/miui/autotask/view/TextEditPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
