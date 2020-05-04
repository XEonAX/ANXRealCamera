.class Lcom/color/support/widget/ColorDatePicker$a;
.super Ljava/lang/Object;
.source "ColorDatePicker.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/color/support/widget/ColorDatePicker;


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$a;->b:Ljava/lang/String;

    const-string v1, "MONTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorDatePicker$a;->c:Lcom/color/support/widget/ColorDatePicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorDatePicker;->i(Lcom/color/support/widget/ColorDatePicker;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$a;->c:Lcom/color/support/widget/ColorDatePicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/color/support/widget/ColorDatePicker$a;->a:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/support/widget/ColorDatePicker$a;->c:Lcom/color/support/widget/ColorDatePicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/color/support/widget/ColorDatePicker$a;->a:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
